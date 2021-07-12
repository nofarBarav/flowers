.class public Landroid/support/constraint/solver/PriorityGoalRow;
.super Landroid/support/constraint/solver/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

.field mCache:Landroid/support/constraint/solver/Cache;

.field private numGoals:I

.field private sortArray:[Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/Cache;)V
    .registers 4

    .line 160
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/ArrayRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    const/16 v0, 0x80

    .line 29
    iput v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->TABLE_SIZE:I

    new-array v1, v0, [Landroid/support/constraint/solver/SolverVariable;

    .line 30
    iput-object v1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    .line 31
    iput-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    .line 33
    new-instance v0, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-direct {v0, p0, p0}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroid/support/constraint/solver/PriorityGoalRow;Landroid/support/constraint/solver/PriorityGoalRow;)V

    iput-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    .line 161
    iput-object p1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->mCache:Landroid/support/constraint/solver/Cache;

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/solver/PriorityGoalRow;Landroid/support/constraint/solver/SolverVariable;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/PriorityGoalRow;->removeGoal(Landroid/support/constraint/solver/SolverVariable;)V

    return-void
.end method

.method private final addToGoal(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 7

    .line 198
    iget v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    array-length v3, v2

    if-le v0, v3, :cond_1f

    .line 199
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    .line 200
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    .line 202
    :cond_1f
    iget-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 203
    iput v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-le v2, v1, :cond_5d

    sub-int/2addr v2, v1

    .line 205
    aget-object v0, v0, v2

    iget v0, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-le v0, v2, :cond_5d

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 206
    :goto_35
    iget v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v2, v3, :cond_44

    .line 207
    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 209
    :cond_44
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    new-instance v4, Landroid/support/constraint/solver/PriorityGoalRow$1;

    invoke-direct {v4, p0}, Landroid/support/constraint/solver/PriorityGoalRow$1;-><init>(Landroid/support/constraint/solver/PriorityGoalRow;)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 215
    :goto_4e
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_5d

    .line 216
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->sortArray:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 220
    :cond_5d
    iput-boolean v1, p1, Landroid/support/constraint/solver/SolverVariable;->inGoal:Z

    .line 221
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    return-void
.end method

.method private final removeGoal(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :goto_2
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_26

    .line 226
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_23

    .line 227
    :goto_c
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_1c

    .line 228
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_c

    :cond_1c
    add-int/lit8 v2, v2, -0x1

    .line 230
    iput v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    .line 231
    iput-boolean v0, p1, Landroid/support/constraint/solver/SolverVariable;->inGoal:Z

    return-void

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    return-void
.end method


# virtual methods
.method public addError(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 5

    .line 191
    iget-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroid/support/constraint/solver/SolverVariable;)V

    .line 192
    iget-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->reset()V

    .line 193
    iget-object v0, p1, Landroid/support/constraint/solver/SolverVariable;->goalStrengthVector:[F

    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 194
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/PriorityGoalRow;->addToGoal(Landroid/support/constraint/solver/SolverVariable;)V

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->constantValue:F

    return-void
.end method

.method public getPivotCandidate(Landroid/support/constraint/solver/LinearSystem;[Z)Landroid/support/constraint/solver/SolverVariable;
    .registers 7

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 169
    :goto_3
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_32

    .line 170
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v0

    .line 171
    iget v3, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_12

    goto :goto_2f

    .line 174
    :cond_12
    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroid/support/constraint/solver/SolverVariable;)V

    if-ne v1, p1, :cond_22

    .line 176
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_2e

    .line 179
    :cond_22
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :goto_2e
    move v1, v0

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_32
    if-ne v1, p1, :cond_36

    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_36
    iget-object p1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object p1, p1, v1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " goal -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/PriorityGoalRow;->constantValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    :goto_1e
    iget v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_44

    .line 263
    iget-object v2, p0, Landroid/support/constraint/solver/PriorityGoalRow;->arrayGoals:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 264
    iget-object v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroid/support/constraint/solver/SolverVariable;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_44
    return-object v0
.end method

.method public updateFromRow(Landroid/support/constraint/solver/ArrayRow;Z)V
    .registers 9

    .line 239
    iget-object p2, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-nez p2, :cond_5

    return-void

    .line 244
    :cond_5
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;

    .line 245
    invoke-interface {v0}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_32

    .line 247
    invoke-interface {v0, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 248
    invoke-interface {v0, v2}, Landroid/support/constraint/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v4

    .line 249
    iget-object v5, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroid/support/constraint/solver/SolverVariable;)V

    .line 250
    iget-object v5, p0, Landroid/support/constraint/solver/PriorityGoalRow;->accessor:Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v5, p2, v4}, Landroid/support/constraint/solver/PriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroid/support/constraint/solver/SolverVariable;F)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 251
    invoke-direct {p0, v3}, Landroid/support/constraint/solver/PriorityGoalRow;->addToGoal(Landroid/support/constraint/solver/SolverVariable;)V

    .line 253
    :cond_26
    iget v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->constantValue:F

    iget v5, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    iput v3, p0, Landroid/support/constraint/solver/PriorityGoalRow;->constantValue:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 255
    :cond_32
    invoke-direct {p0, p2}, Landroid/support/constraint/solver/PriorityGoalRow;->removeGoal(Landroid/support/constraint/solver/SolverVariable;)V

    return-void
.end method
