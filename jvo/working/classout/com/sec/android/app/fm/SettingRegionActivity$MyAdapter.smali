.class Lcom/sec/android/app/fm/SettingRegionActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingRegionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/SettingRegionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/fm/SettingRegionActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/SettingRegionActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/fm/SettingRegionActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/SettingRegionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/sec/android/app/fm/SettingRegionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/fm/SettingRegionActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "count"
    .parameter "view"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x1

    .line 129
    if-nez p2, :cond_d

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingRegionActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 132
    :cond_d
    const v1, 0x7f090059

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .line 134
    .local v0, radioButton:Lcom/sec/android/touchwiz/widget/TwRadioButton;
    if-nez p1, :cond_2a

    .line 135
    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 141
    :goto_1e
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingRegionActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/SettingRegionActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/SettingRegionActivity;->access$000(Lcom/sec/android/app/fm/SettingRegionActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3a

    .line 142
    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    .line 145
    :goto_29
    return-object p2

    .line 136
    :cond_2a
    if-ne p1, v4, :cond_33

    .line 137
    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    goto :goto_1e

    .line 139
    :cond_33
    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    goto :goto_1e

    .line 144
    :cond_3a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    goto :goto_29
.end method
