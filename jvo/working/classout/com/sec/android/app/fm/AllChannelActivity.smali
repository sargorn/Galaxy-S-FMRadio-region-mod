.class public Lcom/sec/android/app/fm/AllChannelActivity;
.super Landroid/app/Activity;
.source "AllChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBackKey:Z

.field mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

.field private mChannelListView:Landroid/widget/ListView;

.field protected mHandler:Landroid/os/Handler;

.field mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

.field private mScanFinishedDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 47
    iput-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    .line 59
    new-instance v0, Lcom/sec/android/app/fm/AllChannelActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/AllChannelActivity$1;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    .line 431
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->setContentView(I)V

    .line 167
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    .line 168
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->setTitle(I)V

    .line 171
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4a

    .line 173
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 174
    :try_start_28
    new-instance v2, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    const v3, 0x7f030002

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 181
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_6c

    .line 186
    :cond_4a
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mHandler:Landroid/os/Handler;

    .line 187
    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 188
    .local v0, btnScanChannels:Landroid/widget/Button;
    new-instance v1, Lcom/sec/android/app/fm/AllChannelActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/AllChannelActivity$2;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/fm/AllChannelActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/AllChannelActivity$3;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    return-void

    .line 181
    .end local v0           #btnScanChannels:Landroid/widget/Button;
    :catchall_6c
    move-exception v2

    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v2, 0x7f070019

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 256
    packed-switch p1, :pswitch_data_a4

    .line 336
    :pswitch_8
    const/4 v1, 0x0

    :goto_9
    return-object v1

    .line 260
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_3d

    .line 261
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07001f

    new-instance v3, Lcom/sec/android/app/fm/AllChannelActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/AllChannelActivity$5;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/AllChannelActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/AllChannelActivity$4;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 288
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_9

    .line 291
    :pswitch_40
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07003b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070013

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v4, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07001e

    new-instance v3, Lcom/sec/android/app/fm/AllChannelActivity$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/AllChannelActivity$6;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    goto :goto_9

    .line 307
    :pswitch_78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, twalertdialog3:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 309
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/sec/android/app/fm/AllChannelActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/AllChannelActivity$7;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_9

    .line 256
    nop

    :pswitch_data_a4
    .packed-switch 0x2
        :pswitch_a
        :pswitch_40
        :pswitch_8
        :pswitch_78
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 422
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ondestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 424
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 369
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 372
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 414
    :goto_8
    return v2

    .line 399
    :pswitch_9
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[MENU_REMOVE] AllChannelActivity"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 400
    iput-boolean v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 406
    :pswitch_1d
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[MENU_RENAME] AllChannelActivity"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 407
    iput-boolean v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 396
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1d
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 380
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 381
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 388
    :goto_14
    return v1

    .line 383
    :cond_15
    const v1, 0x7f07001a

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 384
    .local v0, menuItem:Landroid/view/MenuItem;
    const v1, 0x7f02004b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 385
    const v1, 0x7f070020

    invoke-interface {p1, v2, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 386
    const v1, 0x7f02004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_14
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 346
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated data set :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_28

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 350
    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 351
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    if-nez v0, :cond_c

    .line 358
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 361
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 362
    return-void
.end method
