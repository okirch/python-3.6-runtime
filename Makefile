
pre-checkin:
	./generator.sh --base-os all
	./generator.sh --target workflow --base-os all
	./generator.sh --target readme --base-os all
	./generator.sh --environment buildservice --base-os all
	./generator.sh --environment buildservice --target _service --base-os all
	./generator.sh --target table
	cat generator/README.md table.html > README.md
	rm -f table.html
