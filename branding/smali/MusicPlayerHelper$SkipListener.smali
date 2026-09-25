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

    .line 2244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2245
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;->dir:I

    .line 2246
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 2250
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;->dir:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skip(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4700(I)V

    .line 2251
    return-void
.end method
