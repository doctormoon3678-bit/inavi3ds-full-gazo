.class final enum Lcom/railty/cerfandroid/QwertyKeypad$Kind;
.super Ljava/lang/Enum;
.source "QwertyKeypad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/QwertyKeypad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/railty/cerfandroid/QwertyKeypad$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/railty/cerfandroid/QwertyKeypad$Kind;

.field public static final enum FN:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

.field public static final enum NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

.field public static final enum SHIFT:Lcom/railty/cerfandroid/QwertyKeypad$Kind;


# direct methods
.method private static synthetic $values()[Lcom/railty/cerfandroid/QwertyKeypad$Kind;
    .locals 3

    .line 45
    sget-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v1, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->SHIFT:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v2, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->FN:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    filled-new-array {v0, v1, v2}, [Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/railty/cerfandroid/QwertyKeypad$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    new-instance v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v1, "SHIFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/railty/cerfandroid/QwertyKeypad$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->SHIFT:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    new-instance v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v1, "FN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/railty/cerfandroid/QwertyKeypad$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->FN:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    invoke-static {}, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->$values()[Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    move-result-object v0

    sput-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->$VALUES:[Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/railty/cerfandroid/QwertyKeypad$Kind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    const-class v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    return-object p0
.end method

.method public static values()[Lcom/railty/cerfandroid/QwertyKeypad$Kind;
    .locals 1

    .line 45
    sget-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->$VALUES:[Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    invoke-virtual {v0}, [Lcom/railty/cerfandroid/QwertyKeypad$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    return-object v0
.end method
