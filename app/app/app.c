#include "app/app.h"
#include "module1/module1.h"
#include "module2/module2.h"

int main( int argc, char ** argv )
{
    app();
    module1();
    module2();
    return 0;
}
