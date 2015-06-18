#ifndef QTCGTESTCONSTANTS_H
#define QTCGTESTCONSTANTS_H

#include <QColor>

namespace QtcGtest {
  namespace Constants {

    const char MENU_ID[] = "QtcGtest.Menu";
    const char ACTION_CHECK_PROJECT_ID[] = "QtcGtest.CheckActiveProject";
    const char ACTION_CHECK_CURRENT_ID[] = "QtcGtest.CheckCurrent";
    const char ACTION_CHECK_CHANGED_ID[] = "QtcGtest.CheckChanged";

    const QColor goodColor = QColor ("#129E2E");
    const QColor badColor = QColor ("#C71919");
    const QColor noteColor = QColor ("#C4AC40");
    const QColor textColor = QColor ("#000000");

  } // namespace QtcGtest
} // namespace Constants

#endif // QTCGTESTCONSTANTS_H

