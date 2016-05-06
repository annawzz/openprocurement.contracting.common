��    $      <              \  A   ]  =   �  ?   �  :     8   X  ?   �     �     �  @   �     :  G   X     �     �     �     �  N   �  �   7  G   	  &   Q  +   x  �   �  /   z  .   �  N   �     (  2   ;  q   n  k   �     L	     U	  �   m	  �   *
  �   �
     w  K   �    �  �   �  �   �  j   	  ]   t  b   �  �   5  %   �  #   �  b     5   p  �   �  #   ;  2   _  !   �  #   �  �   �  ^  n  C   �  9     B   K    �  J   �  J   �  �   )  '   �  n   �  �   B  �        �  1   �    �  %    6  <  :   s  �   �   *Brokers (eMalls) can't create contracts in the contract system.* *Contract id is the same in both tender and contract system.* And again we can confirm that there are two documents uploaded. And we can see that it is overriding the original version: Any future modification to the contract are not allowed. Before any contract modification you have to activate contract. Completing contract Contract activation Contract can be completed by switching to ``terminated`` status. Contract in the tender system Contract is transferred from the tender system by an automated process. Creating contract Exploring basic rules Getting access Getting contract In case we made an error, we can reupload the document over the older version: In order to get rights for future contract editing, you need to use this view ``PATCH: /contracts/{id}/credentials?acc_token={tender_token}`` with the API key of the eMall (broker), where tender was generated. In the ``PATCH: /contracts/{id}/credentials?acc_token={tender_token}``: Just invoking it reveals an empty set. Let's access the URL of the created object: Let's say that we have conducted tender and it has ``complete`` status. When the tender is completed,  contract (that has been created in the tender system) is transferred to the contract system **automatically**. Let's see what listing of contracts reveals us: Let's try exploring the `/contracts` endpoint: Let's update contract by supplementing it with all other essential properties. Modifying contract Note that contract is created in ``draft`` status. Procuring entity can upload PDF files into the created contract. Uploading should follow the :ref:`upload` rules. Response will contain ``access.token`` for the contract that can be used for further contract modification. Tutorial Uploading documentation We do see the internal `id` of a contract (that can be used to construct full URL by prepending `http://api-sandbox.openprocurement.org/api/0/contracts/`) and its `dateModified` datestamp. We see the added properties have merged with existing contract data. Additionally, the `dateModified` property was updated to reflect the last modification datestamp. `201 Created` response code and `Location` header confirm document creation. We can additionally query the `documents` collection API endpoint to confirm the action: ``id`` stands for contract id, ``tender_token`` is tender's token (is used for contract token generation). Project-Id-Version: openprocurement.contracting.api 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-04-25 17:22+0300
PO-Revision-Date: 2016-05-06 13:43+0300
Last-Translator: Zoriana Zaiats <sorenabell@quintagroup.com>
Language: uk
Language-Team: Ukrainian <support@quintagroup.com>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 *Майданчики (брокери) не мають можливості створювати договори в системі договорів.* *Ідентифікатор `id` договору однаковий в системах закіпівель та договорів.* І знову можна перевірити, що є два завантажених документа. І ми бачимо, що вона перекриває оригінальну версію: Після цього додання змін до договору не дозволяється. Перед тим, як додавати будь-які зміни до договору, ви повинні його активувати. Завершення договору Активація договору Договір завершується переключенням у статус ``terminated``. Договір в системі закупівель Перенесенням договору із системи закупівель займається автоматизований процес. Створення договору Розглянемо основні правила Отримання доступу Отримання договору Якщо сталась помилка, ми можемо ще раз завантажити документ поверх старої версії: Для того, щоб отримати права для майбутнього редагування договору, необхідно використати таку в’юшку ``PATCH: /contracts/{id}/credentials?acc_token={tender_token}`` з API ключем майданчика, де була згенерована закупівля. В ``PATCH: /contracts/{id}/credentials?acc_token={tender_token}``: При виклику видає пустий набір. Використаємо URL створеного об’єкта: Нехай у нас відбулась закупівля і вона є в статусі  ``complete``. Після цього договір, створений в системі закупівель, потрапляє в систему договорів. Подивимось, що показує список договорів: Подивимось як працює точка входу `/contracts`: Оновимо договір шляхом надання йому усіх інших важливих властивостей. Редагування договору Зверніть увагу на те, що договір створюється у статусі ``draft``. Замовник може завантажити PDF файл у створений договір. Завантаження повинно відбуватись згідно правил :ref:`upload`. У відповіді буде ``access.token`` для договору, який буде використовуватись для модифікації договору. Туторіал Завантаження документації Ми бачимо внутрішнє `id` договору (що може бути використано для побудови повної URL-адреси, якщо додати `http://api-sandbox.openprocurement.org/api/0/contracts/`) та його dateModified дату. Ми бачимо, що додаткові властивості об’єднані з існуючими даними закупівлі. Додатково оновлена властивість `dateModified`, щоб відображати останню дату модифікації. Код відповіді `201 Created` та заголовок `Location` підтверджують, що документ було створено. Додатково можна зробити запит точки входу API колекції документів, щоб підтвердити дію: ``id`` - це ідентифікатор договору, ``tender_token`` - це токен закупівлі (використовується для генерування токена договору). 