octavepwd(){
echo '#!/bin/bash' >> /usr/local/bin/oct
echo 'octave -p "`pwd`"' >> /usr/local/bin/oct
chmod +x /usr/local/bin/oct
oct
}
