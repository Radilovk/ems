.class final Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;
.super Ljava/lang/Object;
.source "AutoUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InfoTap"
.end annotation


# instance fields
.field private final which:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;->which:I

    .line 1128
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1132
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoUi$InfoTap;->which:I

    # invokes: Lcom/isaigu/gymapp/ai/AutoUi;->showInfo(Landroid/view/View;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AutoUi;->access$100(Landroid/view/View;I)V

    .line 1133
    return-void
.end method
