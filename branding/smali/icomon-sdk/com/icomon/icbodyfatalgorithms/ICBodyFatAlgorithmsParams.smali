.class public Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;
.super Ljava/lang/Object;
.source "ICBodyFatAlgorithmsParams.java"


# instance fields
.field public ICBodyFatAlgorithmsBMI_Standard_ASIA:I

.field public ICBodyFatAlgorithmsBMI_Standard_WHO:I

.field public ICBodyFatAlgorithmsBMI_Standard_ZHCN:I

.field public ICBodyFatAlgorithmsBMI_Standard_ZHTW:I

.field public age:I

.field public algType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

.field public bmiStandard:I

.field public height:I

.field public imp1:D

.field public imp2:D

.field public imp3:D

.field public imp4:D

.field public imp5:D

.field public imps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public peopleType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

.field public sex:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

.field public weight:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->ICBodyFatAlgorithmsBMI_Standard_WHO:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->ICBodyFatAlgorithmsBMI_Standard_ZHCN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->ICBodyFatAlgorithmsBMI_Standard_ASIA:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->ICBodyFatAlgorithmsBMI_Standard_ZHTW:I

    .line 35
    sget-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->Male:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    iput-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->sex:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->ICBodyFatAlgorithmsBMI_Standard_WHO:I

    iput v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->bmiStandard:I

    .line 37
    sget-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->ICBodyFatAlgorithmsPeopleTypeNormal:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    iput-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->peopleType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    return-void
.end method


# virtual methods
.method public getAge()I
    .registers 2

    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->age:I

    return v0
.end method

.method public getAlgType()Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;
    .registers 2

    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->algType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->height:I

    return v0
.end method

.method public getImp1()D
    .registers 3

    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp1:D

    return-wide v0
.end method

.method public getImp2()D
    .registers 3

    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp2:D

    return-wide v0
.end method

.method public getImp3()D
    .registers 3

    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp3:D

    return-wide v0
.end method

.method public getImp4()D
    .registers 3

    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp4:D

    return-wide v0
.end method

.method public getImp5()D
    .registers 3

    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp5:D

    return-wide v0
.end method

.method public getPeopleType()Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;
    .registers 2

    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->peopleType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    return-object v0
.end method

.method public getSex()Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;
    .registers 2

    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->sex:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    return-object v0
.end method

.method public getWeight()D
    .registers 3

    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->weight:D

    return-wide v0
.end method

.method public setAge(I)V
    .registers 2

    iput p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->age:I

    return-void
.end method

.method public setAlgType(Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;)V
    .registers 2

    iput-object p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->algType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->height:I

    return-void
.end method

.method public setImp1(D)V
    .registers 3

    iput-wide p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp1:D

    return-void
.end method

.method public setImp2(D)V
    .registers 3

    iput-wide p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp2:D

    return-void
.end method

.method public setImp3(D)V
    .registers 3

    iput-wide p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp3:D

    return-void
.end method

.method public setImp4(D)V
    .registers 3

    iput-wide p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp4:D

    return-void
.end method

.method public setImp5(D)V
    .registers 3

    iput-wide p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp5:D

    return-void
.end method

.method public setPeopleType(Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)V
    .registers 2

    iput-object p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->peopleType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    return-void
.end method

.method public setSex(Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;)V
    .registers 2

    iput-object p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->sex:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    return-void
.end method

.method public setWeight(D)V
    .registers 3

    iput-wide p1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->weight:D

    return-void
.end method
