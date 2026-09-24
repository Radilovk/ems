.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;
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
    name = "SkipListener"
.end annotation


# instance fields
.field private final dir:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 2053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2054
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;->dir:I

    .line 2055
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 2059
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;->dir:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skip(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$5100(I)V

    .line 2060
    return-void
.end method
