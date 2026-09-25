.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;
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
    name = "PanelToggleListener"
.end annotation


# instance fields
.field private final settings:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1865
    iput-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;->settings:Z

    .line 1866
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1870
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;->settings:Z

    if-eqz v2, :cond_1

    .line 1871
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(Z)Z

    .line 1875
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()V

    .line 1876
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()V

    .line 1877
    return-void

    :cond_0
    move v0, v1

    .line 1871
    goto :goto_0

    .line 1873
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$202(Z)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
