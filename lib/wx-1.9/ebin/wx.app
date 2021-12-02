%% This is an -*- erlang -*- file.
%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2010-2016. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%

{application, wx,
 [{description, "Yet another graphics system"},
  {vsn, "1.9"},
  {modules,
   [
    %% Generated modules
  wxUpdateUIEvent, wxHelpEvent, wxIcon, wxGraphicsMatrix, wxImage, wxGraphicsContext, wxFontPickerCtrl, wxEvtHandler, wxFileDialog, wxFlexGridSizer, wxPrintDialogData, wxFocusEvent, wxColourData, wxDisplay, wxClipboardTextEvent, wxMoveEvent, wxChoicebook, wxSystemOptions, wxGridCellFloatRenderer, wxGridCellAttr, wxWindowDC, wxColourDialog, wxHtmlLinkEvent, wxStatusBar, wxInitDialogEvent, wxEvent, wxXmlResource, wxTaskBarIconEvent, wxPrintout, wxSysColourChangedEvent, wxGridCellRenderer, wxListCtrl, wxLocale, wxPreviewFrame, wxBitmap, wxQueryNewPaletteEvent, wxRegion, wxSizerItem, wxDC, wxPasswordEntryDialog, wxFrame, wxNavigationKeyEvent, wxGraphicsRenderer, wxGridCellBoolRenderer, wxMouseCaptureLostEvent, wxTextEntryDialog, wxIdleEvent, wxStyledTextCtrl, wxListItem, wxSpinCtrl, wxMDIClientWindow, wxMDIChildFrame, wxStdDialogButtonSizer, wxPrintData, wxStaticText, wxDirPickerCtrl, wxKeyEvent, wxListEvent, wxEraseEvent, wxRadioBox, wxGridCellEditor, wxPalette, wxTreebook, wxLogNull, wxDCOverlay, wxPreviewCanvas, wxTextAttr, wxScrollWinEvent, wxCalendarCtrl, wxSizeEvent, wxAuiDockArt, wxWindowDestroyEvent, wxSetCursorEvent, wxFontDialog, wxMenuItem, wxChoice, wxControl, wxToggleButton, wxGraphicsFont, wxPopupTransientWindow, wxIconizeEvent, wxJoystickEvent, wxGridBagSizer, wxListbook, wxGridSizer, wxScrollEvent, wxWindowCreateEvent, wxSashLayoutWindow, wxGridCellFloatEditor, wxPrintDialog, wxStaticBox, wxBufferedDC, wxTextCtrl, wxStaticBitmap, wxMaximizeEvent, wxControlWithItems, wxDateEvent, wxBitmapButton, wxGauge, wxListView, wxGridCellTextEditor, wxPrintPreview, wxFindReplaceDialog, wxCalendarEvent, wxTextDataObject, wxGraphicsPath, wxPreviewControlBar, wxStaticLine, wxCursor, wxDialog, wxBrush, wxPaintDC, wxTreeCtrl, wxScreenDC, wxPopupWindow, wxColourPickerCtrl, wxFilePickerCtrl, wxPostScriptDC, wxGrid, wxAuiSimpleTabArt, wxSashEvent, wxScrolledWindow, wxSizerFlags, wxMask, wxFontData, wxScrollBar, wxMenu, wxListItemAttr, wxMirrorDC, wxAuiManager, wxFileDirPickerEvent, wxBoxSizer, wxMDIParentFrame, wxClipboard, wxMouseEvent, wxStyledTextEvent, wxAuiPaneInfo, wxPaintEvent, wxSplitterWindow, wxProgressDialog, wxGridCellNumberEditor, wxCheckBox, wxListBox, wxActivateEvent, wxNotebookEvent, wxColourPickerEvent, wxChildFocusEvent, wxMessageDialog, wxButton, wxMenuBar, wxDisplayChangedEvent, wxToolBar, wxGraphicsPen, wxGridCellNumberRenderer, wxPaletteChangedEvent, wxArtProvider, wxHtmlEasyPrinting, wxFindReplaceData, wxSplitterEvent, wxAcceleratorEntry, wxBufferedPaintDC, wxContextMenuEvent, wxLayoutAlgorithm, wxCheckListBox, wxGridCellBoolEditor, wxMultiChoiceDialog, wxOverlay, wxShowEvent, wxDropFilesEvent, wxHtmlWindow, wxComboBox, wxCommandEvent, wxCloseEvent, wxDataObject, wxSashWindow, wxBitmapDataObject, wxGridCellChoiceEditor, wxImageList, wxAuiNotebook, wxNotifyEvent, wxToolTip, wxSlider, wxPanel, wxSizer, wxPageSetupDialogData, wxGBSizerItem, wxPen, wxMenuEvent, wxPickerBase, wxAuiNotebookEvent, wxGLCanvas, wxStaticBoxSizer, wxTopLevelWindow, wxMemoryDC, wxGridCellStringRenderer, wxTaskBarIcon, wxGCDC, wxMiniFrame, wxFileDataObject, wxRadioButton, wxNotebook, wxCalendarDateAttr, wxCaret, wxAcceleratorTable, wxGraphicsBrush, wxGenericDirCtrl, wxToolbook, wxFont, wxDatePickerCtrl, wxSystemSettings, wxWindow, wxMouseCaptureChangedEvent, wxTreeEvent, wxSplashScreen, wxAuiTabArt, wxSpinEvent, wxSingleChoiceDialog, wxFontPickerEvent, wxPrinter, wxIconBundle, wxClientDC, wxSpinButton, wxAuiManagerEvent, wxPageSetupDialog, wxDirDialog, wxGraphicsObject, wxGridEvent, wx_misc, glu, gl,
    %% Handcrafted modules
    wx,
    wx_object,
    wxe_master,
    wxe_server,
    wxe_util
   ]},
  {registered, []},
  {applications, [stdlib, kernel]},
  {env, []},
  {runtime_dependencies, ["stdlib-2.0","kernel-3.0","erts-6.0"]}
 ]}.
