.class final Lcom/isaigu/gymapp/ai/AutoUi$StripTo;
.super Ljava/lang/Object;
.source "AutoUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StripTo"
.end annotation


# instance fields
.field private final v:Landroid/widget/HorizontalScrollView;

.field private final x:I


# direct methods
.method constructor <init>(Landroid/widget/HorizontalScrollView;I)V
    .registers 3

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;->v:Landroid/widget/HorizontalScrollView;

    .line 298
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;->x:I

    .line 299
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;->v:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoUi$StripTo;->x:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 304
    return-void
.end method
