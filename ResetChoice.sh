#!/bash/bin
echo You about to reset your choices/perference. Are you sure about this, 1 or 0?

read varanswer

if [ $varanswer == 1 ]; then
	rm -r UserChoice/
fi

