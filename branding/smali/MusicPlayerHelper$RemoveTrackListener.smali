.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;
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
    name = "RemoveTrackListener"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2005
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;->index:I

    .line 2006
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 2010
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;->index:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeTrack(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$5000(I)V

    .line 2011
    return-void
.end method
