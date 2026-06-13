import os
import subprocess
import sys

def run_command(command, cwd=None):
    try:
        result = subprocess.run(command, shell=True, check=True, capture_output=True, text=True, cwd=cwd)
        return result.stdout.strip()
    except subprocess.CalledProcessError as e:
        print(f"Error: {e.stderr.strip()}")
        return None

def sync_project(project_path, repo_name, description=""):
    print(f"Initializing sync for {project_path} to {repo_name}...")
    
    # 1. Check if git is initialized
    if not os.path.exists(os.path.join(project_path, ".git")):
        print("Initializing git repository...")
        run_command("git init", cwd=project_path)
    
    # 2. Check for remote
    remotes = run_command("git remote", cwd=project_path)
    if "origin" not in (remotes or ""):
        print(f"Creating repository on GitHub: {repo_name}...")
        # Note: This requires 'gh' CLI to be installed and authenticated
        create_cmd = f"gh repo create Nattapat2871/{repo_name} --public --description \"{description}\" --source=. --remote=origin"
        run_command(create_cmd, cwd=project_path)
    
    # 3. Add and commit
    run_command("git add .", cwd=project_path)
    status = run_command("git status --short", cwd=project_path)
    if status:
        print("Committing changes...")
        run_command('git commit -m "chore: initial sync by Raphael"', cwd=project_path)
    
    # 4. Push
    print("Pushing to GitHub...")
    run_command("git push -u origin main", cwd=project_path)
    print("✅ Sync complete!")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python sync_project.py <path> <repo_name> [description]")
    else:
        desc = sys.argv[3] if len(sys.argv) > 3 else "Managed by Raphael"
        sync_project(sys.argv[1], sys.argv[2], desc)
