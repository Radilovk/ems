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
    .locals 0

    .prologue
    .line 2201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2202
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;->dir:I

    .line 2203
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2207
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;->dir:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4700(I)V

    .line 2208
    return-void
.end method
