.class final Lcom/isaigu/gymapp/wearable/ClientSort$Reset;
.super Ljava/lang/Object;
.source "ClientSort.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reset"
.end annotation


# instance fields
.field private final sheet:Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;)V
    .registers 2

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Reset;->sheet:Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;

    .line 566
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 570
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Reset;->sheet:Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->set(Ljava/lang/String;I)V

    .line 572
    return-void
.end method
