.class public Lcom/sec/android/app/fm/SettingRegionActivity;
.super Landroid/app/Activity;
.source "SettingRegionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/SettingRegionActivity$MyAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBackKey:Z

.field private mSelected:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/SettingRegionActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mSelected:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/fm/SettingRegionActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mSelected:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/SettingRegionActivity;)Landroid/widget/BaseAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private getSelectedValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    iget v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mSelected:I

    if-nez v0, :cond_7

    .line 100
    const-string v0, "Europe"

    .line 105
    :goto_6
    return-object v0

    .line 101
    :cond_7
    iget v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mSelected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 102
    const-string v0, "USA"

    goto :goto_6

    .line 103
    :cond_f
    iget v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mSelected:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 104
    const-string v0, "Japan"

    goto :goto_6

    .line 105
    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SettingRegionActivity;->setContentView(I)V

    .line 38
    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SettingRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 39
    .local v0, listView:Landroid/widget/ListView;
    new-instance v2, Lcom/sec/android/app/fm/SettingRegionActivity$MyAdapter;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/SettingRegionActivity$MyAdapter;-><init>(Lcom/sec/android/app/fm/SettingRegionActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 40
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance v2, Lcom/sec/android/app/fm/SettingRegionActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/SettingRegionActivity$1;-><init>(Lcom/sec/android/app/fm/SettingRegionActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingRegionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "region"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, value:Ljava/lang/String;
    const-string v2, "Europe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 53
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mSelected:I

    .line 60
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    return-void

    .line 54
    :cond_41
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 55
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mSelected:I

    goto :goto_3b

    .line 57
    :cond_4d
    const-string v2, "Japan"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 58
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mSelected:I

    goto :goto_3b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 81
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mBackKey:Z

    .line 84
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mBackKey:Z

    if-nez v0, :cond_c

    .line 92
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mBackKey:Z

    .line 95
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 96
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.radio.region"

    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingRegionActivity;->getSelectedValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/SettingRegionActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/SettingRegionActivity;->mBackKey:Z

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingRegionActivity;->finish()V

    .line 74
    return-void
.end method
