.class public Lcom/sec/android/app/fm/HwTunningActivity;
.super Landroid/app/Activity;
.source "HwTunningActivity.java"


# instance fields
.field private rssiEdit:Landroid/widget/EditText;

.field private snrEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/HwTunningActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->rssiEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/HwTunningActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->snrEdit:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/HwTunningActivity;->setContentView(I)V

    .line 30
    const-string v2, "FMPlayer"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/HwTunningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    .line 31
    .local v1, player:Lcom/samsung/media/fmradio/FMPlayer;
    const v2, 0x7f09000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/fm/HwTunningActivity;->rssiEdit:Landroid/widget/EditText;

    .line 32
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/fm/HwTunningActivity;->snrEdit:Landroid/widget/EditText;

    .line 33
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, button:Landroid/widget/Button;
    const-string v2, "Apply"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v2, Lcom/sec/android/app/fm/HwTunningActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/fm/HwTunningActivity$1;-><init>(Lcom/sec/android/app/fm/HwTunningActivity;Lcom/samsung/media/fmradio/FMPlayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method
