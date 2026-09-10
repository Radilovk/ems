.class final enum Lcom/isaigu/gymapp/widget/SwitchButton$State;
.super Ljava/lang/Enum;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isaigu/gymapp/widget/SwitchButton$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/widget/SwitchButton$State;

.field public static final enum CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

.field public static final enum OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 162
    new-instance v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/widget/SwitchButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    new-instance v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;

    const-string v1, "CLOSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/widget/SwitchButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    .line 161
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v4, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->$VALUES:[Lcom/isaigu/gymapp/widget/SwitchButton$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/SwitchButton$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 161
    const-class v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/widget/SwitchButton$State;
    .locals 1

    .line 161
    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->$VALUES:[Lcom/isaigu/gymapp/widget/SwitchButton$State;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/widget/SwitchButton$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/widget/SwitchButton$State;

    return-object v0
.end method
