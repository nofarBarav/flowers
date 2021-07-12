.class public Landroid/support/constraint/solver/state/HelperReference;
.super Ljava/lang/Object;
.source "HelperReference.java"


# instance fields
.field private mHelperWidget:Landroid/support/constraint/solver/widgets/HelperWidget;

.field protected mReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final mState:Landroid/support/constraint/solver/state/State;

.field final mType:Landroid/support/constraint/solver/state/State$Helper;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/state/State$Helper;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Landroid/support/constraint/solver/state/HelperReference;->mState:Landroid/support/constraint/solver/state/State;

    .line 31
    iput-object p2, p0, Landroid/support/constraint/solver/state/HelperReference;->mType:Landroid/support/constraint/solver/state/State$Helper;

    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)Landroid/support/constraint/solver/state/HelperReference;
    .registers 6

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 38
    iget-object v3, p0, Landroid/support/constraint/solver/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-object p0
.end method

.method public apply()V
    .registers 1

    return-void
.end method

.method public getHelperWidget()Landroid/support/constraint/solver/widgets/HelperWidget;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/support/constraint/solver/state/HelperReference;->mHelperWidget:Landroid/support/constraint/solver/widgets/HelperWidget;

    return-object v0
.end method

.method public getType()Landroid/support/constraint/solver/state/State$Helper;
    .registers 2

    .line 34
    iget-object v0, p0, Landroid/support/constraint/solver/state/HelperReference;->mType:Landroid/support/constraint/solver/state/State$Helper;

    return-object v0
.end method

.method public setHelperWidget(Landroid/support/constraint/solver/widgets/HelperWidget;)V
    .registers 2

    .line 44
    iput-object p1, p0, Landroid/support/constraint/solver/state/HelperReference;->mHelperWidget:Landroid/support/constraint/solver/widgets/HelperWidget;

    return-void
.end method
