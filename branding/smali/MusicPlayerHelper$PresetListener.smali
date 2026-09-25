.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;
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
    name = "PresetListener"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1884
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;->index:I

    .line 1885
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1889
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;->index:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500(I)V

    .line 1890
    return-void
.end method
