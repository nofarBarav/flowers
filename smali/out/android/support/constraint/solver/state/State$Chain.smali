.class public final enum Landroid/support/constraint/solver/state/State$Chain;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Chain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/constraint/solver/state/State$Chain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/state/State$Chain;

.field public static final enum PACKED:Landroid/support/constraint/solver/state/State$Chain;

.field public static final enum SPREAD:Landroid/support/constraint/solver/state/State$Chain;

.field public static final enum SPREAD_INSIDE:Landroid/support/constraint/solver/state/State$Chain;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 90
    new-instance v0, Landroid/support/constraint/solver/state/State$Chain;

    const-string v1, "SPREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/state/State$Chain;->SPREAD:Landroid/support/constraint/solver/state/State$Chain;

    .line 91
    new-instance v1, Landroid/support/constraint/solver/state/State$Chain;

    const-string v3, "SPREAD_INSIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/constraint/solver/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/constraint/solver/state/State$Chain;->SPREAD_INSIDE:Landroid/support/constraint/solver/state/State$Chain;

    .line 92
    new-instance v3, Landroid/support/constraint/solver/state/State$Chain;

    const-string v5, "PACKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/constraint/solver/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/constraint/solver/state/State$Chain;->PACKED:Landroid/support/constraint/solver/state/State$Chain;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/support/constraint/solver/state/State$Chain;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 89
    sput-object v5, Landroid/support/constraint/solver/state/State$Chain;->$VALUES:[Landroid/support/constraint/solver/state/State$Chain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/state/State$Chain;
    .registers 2

    .line 89
    const-class v0, Landroid/support/constraint/solver/state/State$Chain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/solver/state/State$Chain;

    return-object p0
.end method

.method public static values()[Landroid/support/constraint/solver/state/State$Chain;
    .registers 1

    .line 89
    sget-object v0, Landroid/support/constraint/solver/state/State$Chain;->$VALUES:[Landroid/support/constraint/solver/state/State$Chain;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/state/State$Chain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/state/State$Chain;

    return-object v0
.end method
