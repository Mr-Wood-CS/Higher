# Local MkDocs Setup

Open PowerShell in the root of the `Higher` project, then copy and run these commands one at a time.

## First-time setup

```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

## Preview the website

Activate the virtual environment whenever you open a new PowerShell window:

```powershell
.\.venv\Scripts\Activate.ps1
mkdocs serve
```

Open <http://127.0.0.1:8000/> in a web browser.

Press <kbd>Ctrl</kbd>+<kbd>C</kbd> in PowerShell to stop the preview server.

## Test a full build

```powershell
mkdocs build
```

To treat warnings as errors:

```powershell
mkdocs build --strict
```

## Finish working

```powershell
deactivate
```

The `.venv` folder contains the local Python environment. The `site` folder contains the generated website. Neither folder needs to be copied to another computer or committed to Git.
