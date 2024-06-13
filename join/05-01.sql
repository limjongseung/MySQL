-- Active: 1718275518507@@127.0.0.1@3306@sakila
-- 조인의 종류 
-- 조인의 의미 설계가 잘된 관계형 데이터 베이스의 테이블은 엔티티를 1가지 이상 포함한다. 
-- 다음과 같이 고객 정보와 함께 주소를 조회하고 싶다면 어떻게 해야할까? 테이블이 분리되어 있는 상황이니 다음 표처럼 각 테이블의 데이터를 조합하면 되지 않을까?
-- 조인은 테이블 A의 열을 테이블 B에 포함하여 조회할 수 있게 만든다a
use sakila;
-- 내부조인한 테이블에서 조건에 맞는 데이터 조회
select a.customer_id, a.store_id, a.first_name, a.last_name, a.email, a.address_id as a_address_id,
b.address_id as b_address_id, b.address, b.district,b.city_id,b.postal_code,b.phone,b.location
from customer as a
inner join address as b on a.address_id = b.address_id;
-- inner join 문에 조인 조건 2개 이상 사용하기
select a.customer_id, a.first_name, a.last_name, b.address_id,b.address,b.district, b.postal_code from customer as a inner join address as b on a.address_id = b.address_id
and a.create_date = b.last_update
where a.first_name = 'ROSA';
select * from customer;
