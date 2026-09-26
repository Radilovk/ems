.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$AutoTuneListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutoTuneListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1971
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setAutoTune(Z)V

    .line 1972
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()V

    .line 1973
    return-void
.end method
