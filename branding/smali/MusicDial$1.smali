.class Lcom/isaigu/gymapp/dialog/MusicDial$1;
.super Ljava/lang/Object;
.source "MusicDial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/MusicDial;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->closeFromDial()V

    .line 105
    return-void
.end method
