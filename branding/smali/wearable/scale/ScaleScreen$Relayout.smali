.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Relayout"
.end annotation


# instance fields
.field final c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;)V
    .registers 2

    .prologue
    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;->c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    .line 2001
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;->c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;->c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->row:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;->c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait:Z

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;->c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->weights:[F

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;->c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->tallDp:[I

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;->c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->a:Landroid/app/Activity;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;->c:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    iget v6, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->offsetDp:I

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->landH(Landroid/app/Activity;I)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->apply(Landroid/app/Activity;Landroid/widget/LinearLayout;Z[F[II)V

    .line 2006
    return-void
.end method
