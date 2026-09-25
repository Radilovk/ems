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
    .locals 0

    .prologue
    .line 2188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2189
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;->index:I

    .line 2190
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2194
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;->index:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4600(I)V

    .line 2195
    return-void
.end method
