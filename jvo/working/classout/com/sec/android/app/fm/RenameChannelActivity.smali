.class public Lcom/sec/android/app/fm/RenameChannelActivity;
.super Landroid/app/Activity;
.source "RenameChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/RenameChannelActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static toast:Landroid/widget/Toast;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBackKey:Z

.field mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

.field private mChannelListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/sec/android/app/fm/RenameChannelActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$1;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/fm/RenameChannelActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    return p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v7, 0x7f070009

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x4080

    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    if-ne p1, v6, :cond_3e

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3e

    .line 168
    const-string v3, "com.samsung.app.fm.radio.freq.renamed"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, freqRen:Ljava/lang/String;
    const-string v3, "com.samsung.app.fm.radio.freq"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 172
    .local v1, freq:Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4c

    .line 174
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 175
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v0, :cond_44

    if-eqz v2, :cond_44

    .line 178
    iput-object v2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 192
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v1           #freq:Ljava/lang/Float;
    .end local v2           #freqRen:Ljava/lang/String;
    :cond_3e
    :goto_3e
    iput-boolean v6, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->finish()V

    .line 194
    return-void

    .line 182
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    .restart local v1       #freq:Ljava/lang/Float;
    .restart local v2       #freqRen:Ljava/lang/String;
    :cond_44
    invoke-static {p0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3e

    .line 187
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_4c
    invoke-static {p0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->setContentView(I)V

    .line 81
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->setTitle(I)V

    .line 82
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mChannelListView:Landroid/widget/ListView;

    .line 83
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 84
    :try_start_1f
    new-instance v1, Lcom/sec/android/app/fm/RenameChannelActivity$MyAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$MyAdapter;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mChannelListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 87
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_5e

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 92
    sget-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_46

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->toast:Landroid/widget/Toast;

    .line 94
    :cond_46
    sget-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->toast:Landroid/widget/Toast;

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 95
    sget-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mChannelListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/fm/RenameChannelActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$2;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    return-void

    .line 87
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 159
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 147
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    .line 150
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    sget-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 139
    sget-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 140
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    .line 123
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    if-nez v0, :cond_c

    .line 130
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    .line 133
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 134
    return-void
.end method
