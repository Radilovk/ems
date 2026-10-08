.class final Lcom/isaigu/gymapp/wearable/ClientSort$Pick;
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
    name = "Pick"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final sheet:Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;

.field private final value:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Pick;->sheet:Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;

    .line 550
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Pick;->key:Ljava/lang/String;

    .line 551
    iput p3, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Pick;->value:I

    .line 552
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 556
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 557
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Pick;->sheet:Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Pick;->key:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Pick;->value:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->set(Ljava/lang/String;I)V

    .line 558
    return-void
.end method
