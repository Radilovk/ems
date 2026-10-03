.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Done"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;)V
    .registers 2

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;

    .line 462
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 466
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 468
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 471
    :goto_c
    return-void

    .line 469
    :catch_d
    move-exception v0

    goto :goto_c
.end method
