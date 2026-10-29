.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Refresh;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Refresh"
.end annotation


# instance fields
.field final b:Landroid/view/View;

.field final f:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 2238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2239
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Refresh;->f:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;

    .line 2240
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Refresh;->b:Landroid/view/View;

    .line 2241
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Refresh;->f:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Refresh;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Find;->onClick(Landroid/view/View;)V

    .line 2246
    return-void
.end method
