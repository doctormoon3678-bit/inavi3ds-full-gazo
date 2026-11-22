.class final Lcom/railty/cerfandroid/PhoneKeypad$Key;
.super Ljava/lang/Object;
.source "PhoneKeypad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/PhoneKeypad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation


# instance fields
.field final color:I

.field final label:Ljava/lang/String;

.field final shifted:Z

.field final sub:Ljava/lang/String;

.field final vk:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$Key;->label:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/railty/cerfandroid/PhoneKeypad$Key;->sub:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/railty/cerfandroid/PhoneKeypad$Key;->vk:I

    .line 81
    iput-boolean p4, p0, Lcom/railty/cerfandroid/PhoneKeypad$Key;->shifted:Z

    .line 82
    iput p5, p0, Lcom/railty/cerfandroid/PhoneKeypad$Key;->color:I

    .line 83
    return-void
.end method
