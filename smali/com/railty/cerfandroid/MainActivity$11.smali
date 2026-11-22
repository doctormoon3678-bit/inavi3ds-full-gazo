.class Lcom/railty/cerfandroid/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->OnMenu(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 586
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$11;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 591
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$11;->this$0:Lcom/railty/cerfandroid/MainActivity;

    const-wide/16 v0, 0x9c4

    const-wide/32 v2, 0x2bf20

    invoke-static {p1, v0, v1, v2, v3}, Lcom/railty/cerfandroid/MainActivity;->access$3600(Lcom/railty/cerfandroid/MainActivity;JJ)V

    .line 592
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$3700()V

    .line 593
    return-void
.end method
