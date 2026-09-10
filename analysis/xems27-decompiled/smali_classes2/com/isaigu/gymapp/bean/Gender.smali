.class public final enum Lcom/isaigu/gymapp/bean/Gender;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isaigu/gymapp/bean/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/bean/Gender;

.field public static final enum Female:Lcom/isaigu/gymapp/bean/Gender;

.field public static final enum Male:Lcom/isaigu/gymapp/bean/Gender;


# instance fields
.field private gender:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/isaigu/gymapp/bean/Gender;

    const-string v1, "Male"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/isaigu/gymapp/bean/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    .line 8
    new-instance v0, Lcom/isaigu/gymapp/bean/Gender;

    const-string v1, "Female"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/isaigu/gymapp/bean/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    .line 6
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/isaigu/gymapp/bean/Gender;

    sget-object v4, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/isaigu/gymapp/bean/Gender;->$VALUES:[Lcom/isaigu/gymapp/bean/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "gender"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/isaigu/gymapp/bean/Gender;->gender:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/Gender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/isaigu/gymapp/bean/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/Gender;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/bean/Gender;
    .locals 1

    .line 6
    sget-object v0, Lcom/isaigu/gymapp/bean/Gender;->$VALUES:[Lcom/isaigu/gymapp/bean/Gender;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/bean/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/bean/Gender;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/isaigu/gymapp/bean/Gender;->gender:I

    return v0
.end method
