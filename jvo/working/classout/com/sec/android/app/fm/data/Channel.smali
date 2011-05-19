.class public Lcom/sec/android/app/fm/data/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/app/fm/data/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mFreqMHz:F

.field public mFreqName:Ljava/lang/String;

.field public mIsFavourite:Z

.field public mPosition:I


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .parameter "freqMHz"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 43
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .registers 3
    .parameter "freqMHz"
    .parameter "freqName"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 52
    iput-object p2, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/app/fm/data/Channel;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    iget v1, p1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/sec/android/app/fm/data/Channel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/data/Channel;->compareTo(Lcom/sec/android/app/fm/data/Channel;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 59
    if-eqz p1, :cond_14

    instance-of v2, p1, Lcom/sec/android/app/fm/data/Channel;

    if-eqz v2, :cond_14

    .line 60
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    move-object v1, v0

    .line 62
    .local v1, ob:Lcom/sec/android/app/fm/data/Channel;
    iget v2, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    iget v3, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    .line 63
    const/4 v2, 0x1

    .line 66
    .end local v1           #ob:Lcom/sec/android/app/fm/data/Channel;
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n--->Freq :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Is Fav :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Position :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
