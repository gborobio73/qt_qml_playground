// Your First C++ Program

#include <iostream>
#include <QtWidgets/QApplication>
#include <QtCore/QDebug>

// int main()
// {
//     std::cout << "Hello World!";
//     return 0;
// }

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    qDebug() << "me cagon to";

    return a.exec();
}

// #include <QtWidgets/QApplication>

// int main(int argc, char *argv[])
// {
//     QApplication app(argc, argv);
//     return app.exec();
// }