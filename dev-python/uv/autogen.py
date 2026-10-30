#!/usr/bin/env python3


async def generate(hub, **pkginfo):
	json_data = await hub.pkgtools.fetch.get_page(f"https://pypi.org/pypi/{pkginfo['name']}/json", is_json=True)
	info = json_data.get("info")
	version = info.get("version")
	url = None
	for data in json_data.get("urls"):
		if data.get("filename").endswith("tar.gz"):
			url = data.get("url")
			break


	if version and url:
		final_name = url.rsplit("/", 1)[-1]
		gentoo_url = f"https://github.com/gentoo-crate-dist/uv/releases/download/{version}/uv-{version}-crates.tar.xz"
		ebuild = hub.pkgtools.ebuild.BreezyBuild(
			**pkginfo,
			version=version,
			artifacts=[hub.pkgtools.ebuild.Artifact(url=url, final_name=final_name),
						hub.pkgtools.ebuild.Artifact(url=gentoo_url)
			],
		)

		ebuild.push()


# vim: ts=4 sw=4 noet
