/****************************************************************************
**
** Copyright (C) 2013 Jolla Ltd.
** Contact: Vesa-Matti Hartikainen <vesa-matti.hartikainen@jollamobile.com>
**
****************************************************************************/
#ifndef BROWSERSERVICE_H
#define BROWSERSERVICE_H

#include <QObject>
#include <QStringList>

class BrowserService : public QObject
{
    Q_OBJECT
public:
    BrowserService(QObject * parent);

public slots:
    void openUrl(QStringList args);

signals:
    void openUrlRequested(QString url);
};

#endif // BROWSERSERVICE_H