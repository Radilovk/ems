.class final Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RowsClick"
.end annotation


# instance fields
.field private final rows:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;->rows:Z

    .line 246
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 250
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 252
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_focus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    const-string v1, "rows"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;->rows:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1d} :catch_21

    .line 256
    :goto_1d
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 257
    return-void

    .line 254
    :catch_21
    move-exception v0

    goto :goto_1d
.end method
