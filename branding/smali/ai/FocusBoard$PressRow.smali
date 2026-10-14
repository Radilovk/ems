.class final Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;
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
    name = "PressRow"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;->id:Ljava/lang/String;

    .line 1536
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1540
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1541
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->press(Ljava/lang/String;)Z

    .line 1542
    return-void
.end method
