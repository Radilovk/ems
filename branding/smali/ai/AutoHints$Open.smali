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
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 284
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 285
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_c

    .line 287
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V

    .line 289
    :cond_c
    return-void
.end method
