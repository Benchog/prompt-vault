import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "src" / "data" / "prompt-library.json"
TARGET = ROOT / "supabase-seed.sql"


def esc(value: str) -> str:
    return (value or "").replace("'", "''")


def main() -> None:
    data = json.loads(SOURCE.read_text(encoding="utf-8"))
    lines = [
        "-- Generated seed data for PromptVault",
        "truncate table prompts restart identity cascade;",
        "truncate table packages restart identity cascade;",
    ]

    for pack in data["packs"]:
        name = esc(pack["name"].title() + " Pack")
        category = esc(pack["name"])
        count = len(pack["prompts"])
        lines.append(
            "insert into packages (name, category, price, prompt_count, checkout_url) "
            f"values ('{name}', '{category}', 25, {count}, '#');"
        )

    for package_id, pack in enumerate(data["packs"], start=1):
        category = esc(pack["name"])
        for prompt in pack["prompts"]:
            lines.append(
                "insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) "
                "values "
                f"({package_id}, '{category}', {int(prompt.get('number', 1))}, "
                f"'{esc(prompt.get('title', ''))}', "
                f"'{esc(prompt.get('summary', ''))}', "
                f"'{esc(prompt.get('prompt', ''))}', "
                f"'{esc(prompt.get('proTip', ''))}');"
            )

    TARGET.write_text("\n".join(lines), encoding="utf-8")
    print(f"Wrote {TARGET}")


if __name__ == "__main__":
    main()
