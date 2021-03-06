.class public Landroid/support/constraint/solver/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroid/support/constraint/solver/LinearSystem$Row;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroid/support/constraint/solver/SolverVariable;

.field public variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

.field variablesToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/Cache;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 58
    new-instance v0, Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;-><init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    return-void
.end method

.method private isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z
    .registers 3

    .line 532
    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_6

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    return p2
.end method

.method private pickPivotInVariables([ZLandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;
    .registers 12

    .line 596
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v0, :cond_3b

    .line 598
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v5, v3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_38

    .line 602
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v6, v3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    if-eqz p1, :cond_24

    .line 603
    iget v7, v6, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_38

    :cond_24
    if-eq v6, p2, :cond_38

    .line 605
    iget-object v7, v6, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v8, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v7, v8, :cond_32

    iget-object v7, v6, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v8, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v7, v8, :cond_38

    :cond_32
    cmpg-float v7, v5, v4

    if-gez v7, :cond_38

    move v4, v5

    move-object v2, v6

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3b
    return-object v2
.end method


# virtual methods
.method public addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 6

    .line 349
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 350
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {v0, p1, p2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    return-object p0
.end method

.method public addError(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 5

    .line 671
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    goto :goto_2a

    .line 673
    :cond_8
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_2a

    .line 675
    :cond_10
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    const v1, 0x49742400    # 1000000.0f

    goto :goto_2a

    .line 677
    :cond_19
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_22

    const v1, 0x4e6e6b28    # 1.0E9f

    goto :goto_2a

    .line 679
    :cond_22
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2a

    const v1, 0x5368d4a5    # 1.0E12f

    .line 682
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    return-void
.end method

.method addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 4

    .line 178
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    int-to-float p2, p2

    invoke-interface {v0, p1, p2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    return-object p0
.end method

.method chooseSubject(Landroid/support/constraint/solver/LinearSystem;)Z
    .registers 4

    .line 432
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/ArrayRow;->chooseSubjectInVariables(Landroid/support/constraint/solver/LinearSystem;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_d

    .line 437
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    const/4 p1, 0x0

    .line 439
    :goto_d
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_17

    .line 440
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    :cond_17
    return p1
.end method

.method chooseSubjectInVariables(Landroid/support/constraint/solver/LinearSystem;)Landroid/support/constraint/solver/SolverVariable;
    .registers 16

    .line 464
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_f
    if-ge v4, v0, :cond_6a

    .line 466
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v9, v4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v9

    .line 467
    iget-object v10, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v10, v4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 468
    iget-object v11, v10, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v12, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v13, 0x1

    if-ne v11, v12, :cond_43

    if-nez v1, :cond_2e

    .line 472
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayRow;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v1

    :goto_2a
    move v5, v1

    move v7, v9

    move-object v1, v10

    goto :goto_67

    :cond_2e
    cmpl-float v11, v7, v9

    if-lez v11, :cond_37

    .line 476
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayRow;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v1

    goto :goto_2a

    :cond_37
    if-nez v5, :cond_67

    .line 477
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayRow;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v11

    if-eqz v11, :cond_67

    move v7, v9

    move-object v1, v10

    const/4 v5, 0x1

    goto :goto_67

    :cond_43
    if-nez v1, :cond_67

    cmpg-float v11, v9, v3

    if-gez v11, :cond_67

    if-nez v2, :cond_53

    .line 487
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayRow;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v2

    :goto_4f
    move v6, v2

    move v8, v9

    move-object v2, v10

    goto :goto_67

    :cond_53
    cmpl-float v11, v8, v9

    if-lez v11, :cond_5c

    .line 491
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayRow;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v2

    goto :goto_4f

    :cond_5c
    if-nez v6, :cond_67

    .line 492
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayRow;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v11

    if-eqz v11, :cond_67

    move v8, v9

    move-object v2, v10

    const/4 v6, 0x1

    :cond_67
    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_6a
    if-eqz v1, :cond_6d

    return-object v1

    :cond_6d
    return-object v2
.end method

.method public clear()V
    .registers 2

    .line 645
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->clear()V

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v0, 0x0

    .line 647
    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    return-void
.end method

.method createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 13

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_16

    .line 307
    iget-object p3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p3, p1, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 308
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p6, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 309
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    return-object p0

    :cond_16
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, p4, v1

    if-nez v1, :cond_3c

    .line 319
    iget-object p4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p4, p1, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 320
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 321
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p5, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 322
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p6, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    if-gtz p3, :cond_36

    if-lez p7, :cond_8e

    :cond_36
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 324
    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_8e

    :cond_3c
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_4f

    .line 328
    iget-object p4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p4, p1, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 329
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    int-to-float p1, p3

    .line 330
    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_8e

    :cond_4f
    cmpl-float v1, p4, v0

    if-ltz v1, :cond_62

    .line 333
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p6, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 334
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p5, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    neg-int p1, p7

    int-to-float p1, p1

    .line 335
    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_8e

    .line 337
    :cond_62
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    sub-float v3, v0, p4

    mul-float v4, v3, v0

    invoke-interface {v1, p1, v4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 338
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    mul-float v1, v3, v2

    invoke-interface {p1, p2, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 339
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    mul-float v2, v2, p4

    invoke-interface {p1, p5, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 340
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    mul-float v0, v0, p4

    invoke-interface {p1, p6, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    if-gtz p3, :cond_84

    if-lez p7, :cond_8e

    :cond_84
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v3

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    .line 342
    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    :cond_8e
    :goto_8e
    return-object p0
.end method

.method createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 3

    .line 139
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    int-to-float p2, p2

    .line 140
    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 141
    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    return-object p0
.end method

.method createRowDimensionPercent(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .registers 6

    .line 356
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 357
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    return-object p0
.end method

.method public createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .registers 8

    .line 375
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 376
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 377
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p3, p5}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 378
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    neg-float p2, p5

    invoke-interface {p1, p4, p2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    return-object p0
.end method

.method public createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 15

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_34

    cmpl-float v2, p1, p3

    if-nez v2, :cond_e

    goto :goto_34

    :cond_e
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    neg-int p2, p5

    sub-int/2addr p2, p7

    int-to-float p2, p2

    int-to-float p3, p9

    mul-float p3, p3, p1

    add-float/2addr p2, p3

    int-to-float p3, p11

    mul-float p3, p3, p1

    add-float/2addr p2, p3

    .line 292
    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 293
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p2, p4, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 294
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p2, p6, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 295
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p2, p10, p1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 296
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    neg-float p1, p1

    invoke-interface {p2, p8, p1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_4f

    :cond_34
    :goto_34
    neg-int p1, p5

    sub-int/2addr p1, p7

    add-int/2addr p1, p9

    add-int/2addr p1, p11

    int-to-float p1, p1

    .line 280
    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 281
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p4, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 282
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p6, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 283
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p10, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 284
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p8, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    :goto_4f
    return-object p0
.end method

.method public createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;
    .registers 12

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_47

    cmpl-float v3, p1, p3

    if-nez v3, :cond_10

    goto :goto_47

    :cond_10
    cmpl-float v3, p1, v0

    if-nez v3, :cond_1f

    .line 250
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p4, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 251
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p5, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_5b

    :cond_1f
    cmpl-float v0, p3, v0

    if-nez v0, :cond_2e

    .line 253
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p6, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 254
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p7, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_5b

    :cond_2e
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    .line 262
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p2, p4, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 263
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p2, p5, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 264
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p2, p7, p1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 265
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    neg-float p1, p1

    invoke-interface {p2, p6, p1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_5b

    .line 244
    :cond_47
    :goto_47
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p4, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 245
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p5, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 246
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p7, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 247
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p6, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    :goto_5b
    return-object p0
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 4

    if-gez p2, :cond_f

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 148
    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 149
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_19

    :cond_f
    int-to-float p2, p2

    .line 151
    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 152
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p2, p1, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    :goto_19
    return-object p0
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    if-gez p3, :cond_8

    mul-int/lit8 p3, p3, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p3, p3

    .line 165
    iput p3, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    :cond_b
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1c

    .line 168
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, p3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 169
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_26

    .line 171
    :cond_1c
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 172
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    :goto_26
    return-object p0
.end method

.method public createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;
    .registers 4

    int-to-float p2, p2

    .line 207
    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 208
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-interface {p2, p1, p3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    return-object p0
.end method

.method public createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    if-gez p4, :cond_8

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p4, p4

    .line 192
    iput p4, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    :cond_b
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_21

    .line 195
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, p4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 196
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 197
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p3, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_30

    .line 199
    :cond_21
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 200
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, p4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 201
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p3, p4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    :goto_30
    return-object p0
.end method

.method public createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    if-gez p4, :cond_8

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p4, p4

    .line 221
    iput p4, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    :cond_b
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_21

    .line 224
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, p4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 225
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 226
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p3, p4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_30

    .line 228
    :cond_21
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 229
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, p4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 230
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p3, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    :goto_30
    return-object p0
.end method

.method public createRowWithAngle(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .registers 8

    .line 393
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, p3, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 394
    iget-object p3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p3, p4, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 395
    iget-object p3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-interface {p3, p1, p4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 396
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, p4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    neg-float p1, p5

    .line 397
    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    return-object p0
.end method

.method ensurePositiveConstant()V
    .registers 3

    .line 415
    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    .line 417
    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 418
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->invert()V

    :cond_12
    return-void
.end method

.method public getKey()Landroid/support/constraint/solver/SolverVariable;
    .registers 2

    .line 687
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method public getPivotCandidate(Landroid/support/constraint/solver/LinearSystem;[Z)Landroid/support/constraint/solver/SolverVariable;
    .registers 3

    const/4 p1, 0x0

    .line 640
    invoke-direct {p0, p2, p1}, Landroid/support/constraint/solver/ArrayRow;->pickPivotInVariables([ZLandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    return-object p1
.end method

.method hasKeyVariable()Z
    .registers 3

    .line 63
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v0, v1, :cond_11

    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z
    .registers 3

    .line 135
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->contains(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result p1

    return p1
.end method

.method public initFromRow(Landroid/support/constraint/solver/LinearSystem$Row;)V
    .registers 7

    .line 656
    instance-of v0, p1, Landroid/support/constraint/solver/ArrayRow;

    if-eqz v0, :cond_2c

    .line 657
    check-cast p1, Landroid/support/constraint/solver/ArrayRow;

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 659
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->clear()V

    const/4 v0, 0x0

    .line 660
    :goto_f
    iget-object v1, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 661
    iget-object v1, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 662
    iget-object v2, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v2

    .line 663
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v2, v4}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2c
    return-void
.end method

.method public isEmpty()Z
    .registers 3

    .line 559
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_15

    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public pickPivot(Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;
    .registers 3

    const/4 v0, 0x0

    .line 635
    invoke-direct {p0, v0, p1}, Landroid/support/constraint/solver/ArrayRow;->pickPivotInVariables([ZLandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    return-object p1
.end method

.method pivot(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 5

    .line 536
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_e

    .line 538
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, v0, v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 542
    :cond_e
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    move-result v0

    mul-float v0, v0, v1

    .line 543
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_20

    return-void

    .line 547
    :cond_20
    iget p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    div-float/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 548
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->divideByAmount(F)V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 129
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->clear()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    return-void
.end method

.method sizeInBytes()I
    .registers 3

    .line 403
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v1, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    add-int/2addr v0, v1

    add-int/2addr v0, v1

    .line 409
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->sizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .registers 10

    .line 76
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_7

    const-string v0, "0"

    goto :goto_1a

    .line 79
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_47

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    .line 87
    :goto_48
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v5}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v5

    :goto_4e
    if-ge v2, v5, :cond_df

    .line 89
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v6, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    if-nez v6, :cond_5a

    goto/16 :goto_db

    .line 93
    :cond_5a
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v7, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v7

    cmpl-float v8, v7, v4

    if-nez v8, :cond_66

    goto/16 :goto_db

    .line 97
    :cond_66
    invoke-virtual {v6}, Landroid/support/constraint/solver/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v8, -0x40800000    # -1.0f

    if-nez v1, :cond_84

    cmpg-float v1, v7, v4

    if-gez v1, :cond_ad

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    :cond_84
    cmpl-float v1, v7, v4

    if-lez v1, :cond_9a

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ad

    .line 107
    :cond_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ab
    mul-float v7, v7, v8

    :cond_ad
    :goto_ad
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_c3

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_da

    .line 114
    :cond_c3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_da
    const/4 v1, 0x1

    :goto_db
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4e

    :cond_df
    if-nez v1, :cond_f2

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 71
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromFinalVariable(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Z)V
    .registers 6

    .line 573
    iget-boolean p1, p2, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-nez p1, :cond_5

    return-void

    .line 576
    :cond_5
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    .line 577
    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v1, p2, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 578
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    if-eqz p3, :cond_1e

    .line 580
    invoke-virtual {p2, p0}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_1e
    return-void
.end method

.method public updateFromRow(Landroid/support/constraint/solver/ArrayRow;Z)V
    .registers 6

    .line 564
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, p2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->use(Landroid/support/constraint/solver/ArrayRow;Z)F

    move-result v0

    .line 566
    iget v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    if-eqz p2, :cond_16

    .line 568
    iget-object p1, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_16
    return-void
.end method

.method public updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 9

    .line 692
    iget-object v0, p1, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    array-length v0, v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_5f

    .line 698
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_2a

    .line 700
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v4, v3}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 701
    iget v5, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_22

    iget-boolean v5, v4, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-eqz v5, :cond_27

    .line 702
    :cond_22
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 705
    :cond_2a
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_5d

    .line 706
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/SolverVariable;

    .line 707
    iget-boolean v5, v4, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-eqz v5, :cond_4d

    .line 708
    invoke-virtual {p0, p1, v4, v3}, Landroid/support/constraint/solver/ArrayRow;->updateFromFinalVariable(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Z)V

    goto :goto_39

    .line 710
    :cond_4d
    iget-object v5, p1, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    aget-object v4, v5, v4

    invoke-virtual {p0, v4, v3}, Landroid/support/constraint/solver/ArrayRow;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Z)V

    goto :goto_39

    .line 713
    :cond_57
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    :cond_5d
    const/4 v1, 0x1

    goto :goto_8

    :cond_5f
    return-void
.end method
