.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;
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
    name = "InfoListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1943
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1944
    if-nez v0, :cond_0

    .line 1948
    :goto_0
    return-void

    .line 1947
    :cond_0
    const v1, 0x7f0d0172

    const v2, 0x7f0d0173

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;II)V

    goto :goto_0
.end method
