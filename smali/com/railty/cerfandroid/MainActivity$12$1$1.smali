.class Lcom/railty/cerfandroid/MainActivity$12$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity$12$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/railty/cerfandroid/MainActivity$12$1;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity$12$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 647
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$12$1$1;->this$2:Lcom/railty/cerfandroid/MainActivity$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 649
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$12$1$1;->this$2:Lcom/railty/cerfandroid/MainActivity$12$1;

    iget-object p1, p1, Lcom/railty/cerfandroid/MainActivity$12$1;->this$1:Lcom/railty/cerfandroid/MainActivity$12;

    iget-object p1, p1, Lcom/railty/cerfandroid/MainActivity$12;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$3600(Lcom/railty/cerfandroid/MainActivity;)V

    .line 650
    return-void
.end method
