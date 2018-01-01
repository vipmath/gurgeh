if [ -z "$GGPLIB_PATH" ]; then
    echo "Please set \$GGPLIB_PATH"

else
    echo "Ensuring ggplib is set up..."
    . $GGPLIB_PATH/bin/setup.sh

    export GURGEH_PATH=`python2 -c "import os.path as p; print p.dirname(p.dirname(p.abspath('$BASH_SOURCE')))"`
    echo "Automatically setting \$GURGEH_PATH to $GURGEH_PATH"

    export PYTHONPATH=$GURGEH_PATH/src:$PYTHONPATH
    export LD_LIBRARY_PATH=$GURGEH_PATH/src/cpp:$LD_LIBRARY_PATH
fi

