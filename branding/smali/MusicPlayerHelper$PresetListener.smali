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
    .registers 2

    .line 1926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1927
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;->index:I

    .line 1928
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1932
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;->index:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPreset(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500(I)V

    .line 1933
    return-void
.end method
