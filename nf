#!/bin/bash
FILE=$1
if test ! -f "$FILE"
then
  echo -e "#!/bin/bash\n# FILE: $FILE\n" > $FILE
fi
chmod 755 $FILE
vim $FILE
