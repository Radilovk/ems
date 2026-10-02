.class final Lcom/isaigu/gymapp/ai/AutoLook$MainKey;
.super Ljava/lang/Object;
.source "AutoLook.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoLook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MainKey"
.end annotation


# instance fields
.field private final start:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;->start:Z

    .line 141
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 146
    if-nez v2, :cond_f

    .line 147
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 163
    :cond_e
    :goto_e
    return v1

    .line 148
    :cond_f
    if-eq v2, v1, :cond_14

    const/4 v0, 0x3

    if-ne v2, v0, :cond_e

    .line 149
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_57

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_57

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_57

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_57

    move v0, v1

    .line 151
    :goto_44
    if-ne v2, v1, :cond_e

    if-eqz v0, :cond_e

    .line 153
    :try_start_48
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;->start:Z

    if-eqz v0, :cond_59

    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainStartPause()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4f} :catch_50

    goto :goto_e

    .line 158
    :catch_50
    move-exception v0

    .line 159
    const-string v2, "AutoLook.mainKey"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 150
    :cond_57
    const/4 v0, 0x0

    goto :goto_44

    .line 156
    :cond_59
    :try_start_59
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainStop()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_50

    goto :goto_e
.end method
