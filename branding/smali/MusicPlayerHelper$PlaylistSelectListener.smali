.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;
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
    name = "PlaylistSelectListener"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1840
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;->index:I

    .line 1841
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1845
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(I)I

    .line 1846
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600(Z)Z

    .line 1847
    return-void
.end method
