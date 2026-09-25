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
    .locals 0

    .prologue
    .line 1987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1988
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;->index:I

    .line 1989
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1993
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;->index:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1202(I)I

    .line 1994
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1300(Z)Z

    .line 1995
    return-void
.end method
