.class final Lcom/isaigu/gymapp/ai/AutoHints$Open;
.super Ljava/lang/Object;
.source "AutoHints.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Open"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 273
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_c

    .line 275
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V

    .line 277
    :cond_c
    return-void
.end method
