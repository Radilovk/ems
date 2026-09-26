.class Lcom/isaigu/gymapp/dialog/MusicDial$2;
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

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 117
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    .line 118
    return-void
.end method
