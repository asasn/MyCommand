#!/usr/bin/env python
# -*- coding:utf-8 -*-
"""
  author: asasn
datetime: 2019/7/10 0010 4:03
software: PyCharm
"""

import time

self.old = None
self.time_tag = time.perf_counter()


def onClicked(self, qmodeLindex):
    p = qmodeLindex.row()
    item = self.myui.treeWidget.currentItem()
    if time.perf_counter() - self.time_tag > 0.5:
        if self.old and self.myui.treeWidget.isPersistentEditorOpen(self.old):
            self.myui.treeWidget.closePersistentEditor(self.old)
        else:
            if item and self.old is item:
                if not self.myui.treeWidget.isPersistentEditorOpen(item):
                    self.myui.treeWidget.openPersistentEditor(item)
                else:
                    self.myui.treeWidget.closePersistentEditor(item)

    self.old = item
    self.time_tag = time.perf_counter()